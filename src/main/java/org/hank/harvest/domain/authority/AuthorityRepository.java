package org.hank.harvest.domain.authority;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/4.
 */
@Repository
public interface AuthorityRepository extends CrudRepository<AuthorityEntity, Integer> {
}
