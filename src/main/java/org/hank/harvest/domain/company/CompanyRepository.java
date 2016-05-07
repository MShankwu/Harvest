package org.hank.harvest.domain.company;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/6.
 */
@Repository
public interface CompanyRepository extends JpaRepository<CompanyEntity, Integer> {
}
