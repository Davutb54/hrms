package com.davutbudak.hrms.dataAccess.abstracts;

import com.davutbudak.hrms.entities.concretes.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CandidateDao extends JpaRepository<Candidate, Integer> {
}
