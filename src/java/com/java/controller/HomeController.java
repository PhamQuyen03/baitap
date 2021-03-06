/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.controller;

import com.java.dao.AboutDAO;
import com.java.dao.NewsDAO;
import com.java.dao.RecruitmentDAO;
import com.java.model.About;
import com.java.model.News;
import com.java.model.Recruitment;
import java.sql.Date;
import java.util.List;
import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author tuong
 */
@Controller
public class HomeController {

    NewsDAO spNews = new NewsDAO();
    RecruitmentDAO spRecs = new RecruitmentDAO();
    AboutDAO spAbout = new AboutDAO();
//phần của news

    @RequestMapping(value = "/support", method = RequestMethod.GET)
    public String indexNews(Model model) {
        List<News> news = spNews.paginationPosted(0, 4);
        List<News> wait = spNews.paginationWaited(0, 4);
        int num;
        int numpost;
        if(spNews.getWaited().size()%4 == 0 )
            num = spNews.getWaited().size()/4;
        else
            num = spNews.getWaited().size()/4 + 1;
        
        if(spNews.getPosted().size()%4 == 0 )
            numpost = spNews.getPosted().size()/4;
        else
            numpost = spNews.getPosted().size()/4 + 1;
        
        model.addAttribute("numpage", num);
        model.addAttribute("numpagepost", numpost);
        model.addAttribute("news", news);
        model.addAttribute("news_wait", wait);
        return "admin/Supporter";
    }

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error() {
        return "admin/Error";
    }

    @RequestMapping(value = "/support", method = RequestMethod.POST)
    public String insertNews(@RequestParam("id_category") int id_category, @RequestParam("title") String title, @RequestParam("description") String des, @RequestParam("contents") String contents,
            @RequestParam("img") String img, @RequestParam("author") String author, @RequestParam("create_at") Date create_at, @RequestParam("update_at") Date update_at,
            @RequestParam("status") int status, Model model) {
        if (spNews.insert(id_category, title, des, contents, img, author, create_at, update_at, status)) {
            return "redirect:/support";
        } else {
            return "redirect:/error";
        }
    }
//
    @RequestMapping(value = "/support/news/edit", method = RequestMethod.POST)
    public String updateNewsTest(@RequestParam("id") int id, @RequestParam("id_category") int id_category, @RequestParam("description") String des, @RequestParam("title") String title, @RequestParam("contents") String content,
            @RequestParam("img") String img, @RequestParam("author") String author, @RequestParam("create_at") Date create_at, @RequestParam("update_at") Date update_at,
            @RequestParam("status") int status, Model model) {

        spNews.update(id, id_category, title, des, content, img, author, update_at, update_at, status);
        List<News> news = spNews.getPosted();
        model.addAttribute("news", news);
        return "redirect:/support";
    }

    @RequestMapping(value = "/support/news/edit", method = RequestMethod.GET)
    public @ResponseBody
    ModelAndView detailNewsTest(@RequestParam("id") int id, Model model) {
        News news = spNews.findById(id);
//        model.addAttribute("detail", news);
        ModelAndView mc = new ModelAndView("admin/Edit_News", "detail", news);
        return mc;
    }
    
    @RequestMapping(value = "/support/news", method = RequestMethod.GET)
    public @ResponseBody ModelAndView listNews(@RequestParam("page") int page, Model model) {
        
        List<News> wait = spNews.paginationWaited(page*4-4, page*4);
        int num;
        if(spNews.getWaited().size()%4 == 0 )
            num = spNews.getWaited().size()/4;
        else
            num = spNews.getWaited().size()/4 + 1;
        
        model.addAttribute("numpage", num);
        ModelAndView mc = new ModelAndView("admin/ContentNews", "news_wait", wait);
        return mc;
    }
    
    @RequestMapping(value = "/support/newspost", method = RequestMethod.GET)
    public @ResponseBody ModelAndView listNewsPost(@RequestParam("page") int page, Model model) {
        List<News> news = spNews.paginationPosted(page*4-4, page*4);
        int numpost;
        if(spNews.getPosted().size()%4 == 0 )
            numpost = spNews.getPosted().size()/4;
        else
            numpost = spNews.getPosted().size()/4 + 1;
        
        model.addAttribute("numpagepost", numpost);
        ModelAndView mc = new ModelAndView("admin/ContentNewsPost", "news", news);
        return mc;
    }


    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public @ResponseBody
    void deleteNews(@RequestParam("id") int id) {
        spNews.delete(id);
    }

//@CONTROLLER RECRUITMENT
    @RequestMapping(value = "/support/recruitment", method = RequestMethod.GET)
    public String indexRecruitment(Model model) {
        List<Recruitment> recs = spRecs.paginationWaited(0, 4);
        List<Recruitment> recsPost = spRecs.paginationPosted(0,4);
        List<Recruitment> recNum = spRecs.getWaited();
        List<Recruitment> recPostNum = spRecs.getPosted();
        int num;
        int numPost;
        if (recNum.size() % 4 == 0) {
            num = recNum.size() / 4;
        } else {
            num = recNum.size() / 4 + 1;
        }
        if (recPostNum.size() % 4 == 0) {
            numPost = recPostNum.size() / 4;
        } else {
            numPost = recPostNum.size() / 4 + 1;
        }
        model.addAttribute("recs", recs);
        model.addAttribute("recsPost", recsPost);
        model.addAttribute("numPage", num);
        model.addAttribute("numPagePost", numPost);
        return "admin/Recruitment";
    }

    @RequestMapping(value = "/support/recruitment", method = RequestMethod.POST)
    public String insertRecruitment(@RequestParam("nameRec") String name, @RequestParam("summary") String sumary, @RequestParam("descriptionRec") String des, @RequestParam("requirementRec") String requirement, @RequestParam("interestRec") String interest, @RequestParam("addressRec") String address,
            @RequestParam("create_atRc") Date create, @RequestParam("start_recruitmentRec") Date start, @RequestParam("end_recruitmentRec") Date end, @RequestParam("statusRec") int status) {
        spRecs.insert(name, sumary, des, requirement, interest, address, create, start, end, status);
        return "redirect:/support/recruitment";
    }

    @RequestMapping(value = "/support/recruitment/edit", method = RequestMethod.GET)
    public @ResponseBody
    ModelAndView detailRecruitment(@RequestParam("id") int id, Model model) {
        Recruitment rec = spRecs.findId(id);
//        model.addAttribute("recEdit", rec);
        ModelAndView mc = new ModelAndView("admin/Edit_Recruitment", "recEdit", rec);
        return mc;
    }

    @RequestMapping(value = "/support/recruitment/edit", method = RequestMethod.POST)
    public String updateRecruitment(@RequestParam("id") int id, Model model, @RequestParam("nameRec") String name, @RequestParam("summary") String sumay, @RequestParam("descriptionRec") String des, @RequestParam("requirementRec") String requirement, @RequestParam("interestRec") String interest, @RequestParam("addressRec") String address,
            @RequestParam("create_atRc") Date create, @RequestParam("start_recruitmentRec") Date start, @RequestParam("end_recruitmentRec") Date end, @RequestParam("statusRec") int status) {
        Recruitment rec = new Recruitment();
        spRecs.update(id, name, sumay, des, requirement, interest, address, create, start, end, status);
        return "redirect:/support/recruitment";
    }

    @RequestMapping(value = "/support/recruitment/page", method = RequestMethod.GET)
    public @ResponseBody ModelAndView paginationRecruitment(@RequestParam("page") int page, Model model) {

        List<Recruitment> recs = spRecs.paginationWaited((page - 1) * 4, ((page - 1) * 4) + 4);
        List<Recruitment> recNum = spRecs.getWaited();
        int num;
        int numPost;
        if (recNum.size() % 4 == 0) {
            num = recNum.size() / 4;
        } else {
            num = recNum.size() / 4 + 1;
        }
        model.addAttribute("recs", recs);
        model.addAttribute("numPage", num);
        ModelAndView mc = new ModelAndView("admin/Content_Recruitment");
        return mc;
    }
    
    @RequestMapping(value = "/support/recruitment/pagePost", method = RequestMethod.GET)
    public @ResponseBody ModelAndView paginationRecruitmentPost(@RequestParam("page") int page, Model model) {

        List<Recruitment> recsPost = spRecs.paginationPosted((page - 1) * 4, ((page - 1) * 4) + 4);
        List<Recruitment> recPostNum = spRecs.getPosted();
        int numPost;
        if (recPostNum.size() % 4 == 0) {
            numPost = recPostNum.size() / 4;
        } else {
            numPost = recPostNum.size() / 4 + 1;
        }
        model.addAttribute("recsPost", recsPost);
        model.addAttribute("numPagePost", numPost);
        ModelAndView mc = new ModelAndView("admin/Content_RecruitmentPost");
        return mc;
    }

    @RequestMapping(value = "/support/recruitment/deletRe", method = RequestMethod.POST)
    public @ResponseBody
    String deleteReRecruitment(@RequestParam("idRe") int idRe) {
        spRecs.delete(idRe);
        return "admin/Recruitment";
    }

//    @CONTROLLER ABOUT
    @RequestMapping(value = "/support/about", method = RequestMethod.GET)
    public String indexAbout(Model model) {
        List<About> abouts = spAbout.getAboutWaited();
        model.addAttribute("abouts", abouts);
        return "admin/About";
    }

    @RequestMapping(value = "/support/about", method = RequestMethod.POST)
    public String insertAbout(@RequestParam("titleAbout") String title, @RequestParam("contentAbout") String content, @RequestParam("create_atAbout") Date create_at, @RequestParam("update_atAbout") Date update_at, @RequestParam("statusAbout") int status) {
        spAbout.insert(title, "img", content, create_at, update_at, status);
        return "redirect:/support/about";
    }

    @RequestMapping(value = "/support/about/edit", method = RequestMethod.GET)
    public @ResponseBody
    ModelAndView detailAbout(@RequestParam("id") int id, Model model) {
        About about = spAbout.findById(id);
        //        model.addAttribute("aboutEdit", about);
        ModelAndView mc = new ModelAndView("admin/Edit_About", "aboutEdit", about);
        return mc;
    }

    @RequestMapping(value = "/support/about/edit", method = RequestMethod.POST)
    public String updateAbout(@RequestParam("id") int id, @RequestParam("titleAbout") String title, @RequestParam("contentAbout") String content, @RequestParam("create_atAbout") Date create_at, @RequestParam("update_atAbout") Date update_at, @RequestParam("statusAbout") int status) {
        spAbout.update(id, title, "img", content, create_at, update_at, status);
        return "redirect:/support/about";
    }

    @RequestMapping(value = "/support/about/delete", method = RequestMethod.POST)
    public @ResponseBody
    String deleteAbout(@RequestParam("id") int id) {
        spAbout.delete(id);
        return "admin/About";
    }

    @RequestMapping(value = "/support/customer", method = RequestMethod.GET)
    public String indexCustomer(Model model) {

        return "admin/Customer";
    }

    
}
