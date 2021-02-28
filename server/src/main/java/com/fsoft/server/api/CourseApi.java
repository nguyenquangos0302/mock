package com.fsoft.server.api;

import com.fsoft.server.model.CourseModel;
import com.fsoft.server.service.ICourseService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CourseApi {

    private final ICourseService courseService;

    @GetMapping("/course")
    public List<CourseModel> findAllCourse() {
        return courseService.findAllCourse();
    }

    @PostMapping("/course")
    public List<CourseModel> findAllCourseByUrl(@RequestBody CourseModel courseModel) {
        return courseService.findAllCourseByUrl(courseModel);
    }

}
