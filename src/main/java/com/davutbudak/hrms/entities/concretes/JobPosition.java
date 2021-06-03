package com.davutbudak.hrms.entities.concretes;

import com.davutbudak.hrms.entities.concretes.cv.Experience;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "job_positions")
@AllArgsConstructor
@NoArgsConstructor
public class JobPosition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @JsonIgnore
    @OneToMany(mappedBy = "jobPosition")
    private List<JobPosting> jobPostings;

    @JsonIgnore
    @OneToMany(mappedBy = "jobPosition")
    private List<Experience> experiences;

}