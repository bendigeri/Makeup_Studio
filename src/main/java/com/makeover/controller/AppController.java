package com.makeover.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.makeover.model.Gallery;
import com.makeover.model.MakeupBlog;
import com.makeover.model.User;
import com.makeover.model.UserMessages;
import com.makeover.model.UserProfile;
import com.makeover.service.GalleryService;
import com.makeover.service.MakeupBlogService;
import com.makeover.service.UserMessagesService;
import com.makeover.service.UserProfileService;
import com.makeover.service.UserService;



@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {

	@Autowired
	UserService userService;
	
	@Autowired
	UserProfileService userProfileService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@Autowired
	UserMessagesService userMessagesService;
	
	@Autowired
	MakeupBlogService makeupBlogService;

	@Autowired
	GalleryService galleryService;
	
	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = {"/adminHome" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		model.addAttribute("makeupblog", new MakeupBlog());
		return "adminHome";
	}

	@RequestMapping(value = {"/index" }, method = RequestMethod.GET)
	public String home(ModelMap model) {

		return "libro/index";
	}
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public ModelAndView homePage(ModelAndView model) {

		List<Gallery> galleryPhotos= galleryService.getGalleryImages();
		List<MakeupBlog> blogs= makeupBlogService.blogList();
		
		if(!blogs.isEmpty()) {
			MakeupBlog makeupBlog = Collections.max(blogs, new Comparator<MakeupBlog>() {

				@Override
				public int compare(MakeupBlog o1, MakeupBlog o2) {
					// TODO Auto-generated method stub
					return Integer.compare(o1.getId(), o2.getId());
				}
			});
		model.addObject("makeupBlog", makeupBlog);
		}
		
    	model.addObject("galleryPhotos", galleryPhotos);
    	
    	model.setViewName("home");
		return model;
	}
	
	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}
		
		userService.saveUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		//return "success";
		return "registrationsuccess";
	}


	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		User user = userService.findBySSO(ssoId);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}
	
	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result,
			ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*//Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which is a unique key to a User.
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}*/


		userService.updateUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		return "registrationsuccess";
	}

	
	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/list";
	}
	

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}
	
	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(ModelMap model) {
		model.addAttribute("userMessages", new UserMessages());
		return "contact";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String sendMessage(@Valid UserMessages userMessages, BindingResult result,
			ModelMap model) {
		userMessagesService.save(userMessages);
		model.addAttribute("userMessages", new UserMessages());
		return "contact";
	}
	
	@RequestMapping(value = "/getMessages", method = RequestMethod.GET)
	public ModelAndView getMessages(@Valid UserMessages userMessages, BindingResult result,
			ModelAndView model) {
		List<UserMessages> msgList= userMessagesService.getMessageList();
		ObjectMapper mapper= new ObjectMapper();
		String jsonMsgStr = "";
		try {
			jsonMsgStr= mapper.writeValueAsString(msgList);
			System.out.println(jsonMsgStr);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addObject("msgList", msgList);
		model.setViewName("messagelist");
		return model;
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String aboutMe(ModelMap model) {
		model.addAttribute("userMessages", new UserMessages());
		return "aboutme";
	}
	
	@RequestMapping(value = {"/myblogs"}, method = RequestMethod.GET)
	public ModelAndView  myblog(ModelAndView model) {
		
		List<MakeupBlog> blogs= makeupBlogService.blogList();
		System.out.println(blogs);
		model.addObject("blogs", blogs);
		model.setViewName("myblog");
		return model;
	}
	
	@RequestMapping(value = {"admin/myblogs"}, method = RequestMethod.GET)
	public ModelAndView  myblogAdmin(ModelAndView model) {
		
		List<MakeupBlog> blogs= makeupBlogService.blogList();
		System.out.println(blogs);
		model.addObject("blogs", blogs);
		model.setViewName("mybloglistAdmin");
		return model;
	}
	
	
	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = {"/login","/admin"}, method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	    	return "redirect:/adminHome";  
	    }
	}

	/**
	 * This method handles logout requests.
	 * Toggle the handlers if you are RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	/**
	 * This method returns true if users is already authenticated [logged-in], else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}

	@RequestMapping(value = "/writeBlog", method = RequestMethod.GET)
	public String adminBlog(ModelMap model) {
		MakeupBlog makeupBlog= new MakeupBlog();
		model.addAttribute("makeupblog", makeupBlog);
		return "writeBlog";
	}
	
    @RequestMapping(value = "/postBlog", method = RequestMethod.POST)
    public String postBlog(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload,@Valid MakeupBlog makeupBlog, BindingResult result,
			ModelMap model) throws Exception {
    	    model.get("edit");  
    	
    	    
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                
            	if(makeupBlog.getId()!=null) {
            		 makeupBlog.setFileBytes(aFile.getBytes());
            		makeupBlogService.updateUser(makeupBlog);
            	
            	}else {
            		System.out.println("Saving file: " + aFile.getOriginalFilename());
                    makeupBlog.setFileBytes(aFile.getBytes());
                    makeupBlog.setPostDate(new Date());
                    makeupBlog.setPostStatus("draft");
                    makeupBlog.setShortArticleContent(makeupBlog.getArticleContent().substring(0, 300));
                    makeupBlogService.save(makeupBlog); 
            	}
            	
                              
            }
        }
  
        return "registrationsuccess";
    }  
    
    @RequestMapping(value = "/getblogPhoto/{id}",method = RequestMethod.GET)
	public void getMyBlogPhoto(HttpServletResponse response,@PathVariable("id") int id) throws Exception {
		response.setContentType("image/jpeg");
		
		byte[] bytes = makeupBlogService.getPhotoById(id);
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
    
    @RequestMapping(value = "*/getblogPhoto/{id}",method = RequestMethod.GET)
 	public void getDetailblogPhoto(HttpServletResponse response,@PathVariable("id") int id) throws Exception {
 		response.setContentType("image/jpeg");
 		
 		byte[] bytes = makeupBlogService.getPhotoById(id);
 		InputStream inputStream = new ByteArrayInputStream(bytes);
 		IOUtils.copy(inputStream, response.getOutputStream());
 	}
    
  
    @RequestMapping(value = {"/blogDetail/{id}"}, method = RequestMethod.GET)
	public ModelAndView readMyblog(ModelAndView model,@PathVariable("id") int id) {
		
		MakeupBlog makeupBlog= makeupBlogService.getBlogById(id);
		System.out.println(makeupBlog);
		model.addObject("makeupBlog", makeupBlog);
		model.setViewName("blogdetail");
		return model;
	}
    
    @RequestMapping(value = "/getGelleryPhoto/{id}",method = RequestMethod.GET)
	public void getGalleryPhoto(HttpServletResponse response,@PathVariable("id") int id) throws Exception {
		response.setContentType("image/jpeg");
		
		byte[] bytes = galleryService.getPhotoById(id);
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
    

    @RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public ModelAndView getGalleryPhotos(ModelAndView model) {

    	List<Gallery> galleryPhotos= galleryService.getGalleryImages();
    	model.addObject("galleryPhotos", galleryPhotos);
    	model.setViewName("gallery");
		return model;
	}
    
    @RequestMapping(value = "/adminGallery", method = RequestMethod.GET)
	public String adminGallery(ModelMap model) {
		Gallery gallery= new Gallery();
		model.addAttribute("gallery", gallery);
		return "adminGallery";
	}
    
    @RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
    public String uploadImageToGallery(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload,@Valid Gallery gallery, BindingResult result,
			ModelMap model) throws Exception {
          
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                  
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                 
                gallery.setFileBytes(aFile.getBytes());
                gallery.setUploadDate(new Date());
                gallery.setImageCategory("draft");
                galleryService.save(gallery);               
            }
        }
  
        return "registrationsuccess";
    }  
    
    
    @RequestMapping(value = {"/aboutus" }, method = RequestMethod.GET)
	public String about(ModelMap model) {

		return "libro/aboutme";
	}
    
    @RequestMapping(value = {"/contactus" }, method = RequestMethod.GET)
   	public String getContactMeForm(ModelMap model) {
    	model.addAttribute("userMessages", new UserMessages());
   		return "libro/contact";
   	}
    
	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String sendUserMessage(@Valid UserMessages userMessages, BindingResult result,
			ModelMap model) {
		userMessagesService.save(userMessages);
		model.addAttribute("userMessages", new UserMessages());
		return "libro/contact";
	}
    
    @RequestMapping(value = {"/makeover-gallery" }, method = RequestMethod.GET)
   	public ModelAndView getgallery(ModelAndView model) {
    	List<Gallery> galleryPhotos= galleryService.getGalleryImages();
    	model.addObject("galleryPhotos", galleryPhotos);
    	model.setViewName("libro/gallery");
		return model;
   	}
    
    @RequestMapping(value = {"/blogs" }, method = RequestMethod.GET)
   	public ModelAndView getblogs(ModelAndView model) {

    	List<MakeupBlog> blogs= makeupBlogService.blogList();
		System.out.println(blogs);
		model.addObject("blogs", blogs);
		model.setViewName("libro/blogs");
		return model;
    	
   	}
    
    @RequestMapping(value = {"/readBlog/{id}"}, method = RequestMethod.GET)
  	public ModelAndView singleBlogDetail(ModelAndView model,@PathVariable("id") int id) {
  		
  		MakeupBlog makeupBlog= makeupBlogService.getBlogById(id);
  		System.out.println(makeupBlog);
  		model.addObject("makeupBlog", makeupBlog);
  		model.setViewName("libro/blog-detail");
  		return model;
  	}
    
    @RequestMapping(value = { "/edit-blog-{id}" }, method = RequestMethod.GET)
	public String editBlog(@PathVariable("id") int id, ModelMap model) {
		MakeupBlog makeupblog = makeupBlogService.getBlogById(id);
		model.addAttribute("makeupblog", makeupblog);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "writeBlog";
	}
    
    @RequestMapping(value = { "/edit-blog-{ssoId}" }, method = RequestMethod.POST)
	public String editBlog(@Valid MakeupBlog blog, BindingResult result,
			ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "writeBlog";
		}
		makeupBlogService.updateUser(blog);
		

		return "admin/myblogs";
	}
}