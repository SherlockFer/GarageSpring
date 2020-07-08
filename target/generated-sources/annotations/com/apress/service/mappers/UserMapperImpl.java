package com.apress.service.mappers;

import com.apress.domain.User;
import com.apress.domain.User.UserBuilder;
import com.apress.dto.UserDTO;
import com.apress.dto.UserDTO.UserDTOBuilder;
import java.util.ArrayList;
import java.util.Collection;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-07-07T15:03:38+0100",
    comments = "version: 1.4.0.Beta1, compiler: Eclipse JDT (IDE) 3.18.0.v20190522-0428, environment: Java 12.0.1 (Oracle Corporation)"
)
@Component
public class UserMapperImpl implements UserMapper {

    @Override
    public UserDTO toUserDTO(User user) {
        if ( user == null ) {
            return null;
        }

        UserDTOBuilder userDTO = UserDTO.builder();

        userDTO.email( user.getEmail() );
        userDTO.fullName( user.getFullName() );
        userDTO.id( user.getId() );
        userDTO.mobile( user.getMobile() );
        userDTO.password( user.getPassword() );
        userDTO.role( user.getRole() );

        return userDTO.build();
    }

    @Override
    public User toUser(UserDTO userDTO) {
        if ( userDTO == null ) {
            return null;
        }

        UserBuilder user = User.builder();

        user.email( userDTO.getEmail() );
        user.fullName( userDTO.getFullName() );
        user.id( userDTO.getId() );
        user.mobile( userDTO.getMobile() );
        user.password( userDTO.getPassword() );
        user.role( userDTO.getRole() );

        return user.build();
    }

    @Override
    public Collection<UserDTO> toUserDTOs(Collection<User> users) {
        if ( users == null ) {
            return null;
        }

        Collection<UserDTO> collection = new ArrayList<UserDTO>( users.size() );
        for ( User user : users ) {
            collection.add( toUserDTO( user ) );
        }

        return collection;
    }
}
