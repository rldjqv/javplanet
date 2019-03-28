package kr.co.javplanet.front.issue;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/issue")
public class FrontIssueController {
	
	@GetMapping("")
	public String issue(Model model, final HttpServletRequest request) throws Exception {
		return "issue/issue";
	}
}