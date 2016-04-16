package org.hank.harvest.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/4/14.
 */
@Repository
public interface UserRepository extends JpaRepository<User, String> {

    User findByUserAccount(String userAccount);

}
