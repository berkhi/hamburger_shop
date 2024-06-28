package com.kerem.mapper;

import com.kerem.dto.request.AuthRegisterRequestDto;
import com.kerem.dto.response.AuthResponseDto;
import com.kerem.entity.Auth;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-06-14T14:07:36+0300",
    comments = "version: 1.5.5.Final, compiler: IncrementalProcessingEnvironment from gradle-language-java-8.8.jar, environment: Java 21 (Oracle Corporation)"
)
@Component
public class AuthMapperImpl implements AuthMapper {

    @Override
    public Auth dtoToEntity(AuthRegisterRequestDto authRegisterRequestDto) {
        if ( authRegisterRequestDto == null ) {
            return null;
        }

        Auth.AuthBuilder auth = Auth.builder();

        auth.name( authRegisterRequestDto.getName() );
        auth.surname( authRegisterRequestDto.getSurname() );
        auth.phone( authRegisterRequestDto.getPhone() );
        auth.email( authRegisterRequestDto.getEmail() );
        auth.password( authRegisterRequestDto.getPassword() );

        return auth.build();
    }

    @Override
    public AuthRegisterRequestDto entityToRequestDto(Auth auth) {
        if ( auth == null ) {
            return null;
        }

        AuthRegisterRequestDto.AuthRegisterRequestDtoBuilder authRegisterRequestDto = AuthRegisterRequestDto.builder();

        authRegisterRequestDto.name( auth.getName() );
        authRegisterRequestDto.surname( auth.getSurname() );
        authRegisterRequestDto.phone( auth.getPhone() );
        authRegisterRequestDto.email( auth.getEmail() );
        authRegisterRequestDto.password( auth.getPassword() );

        return authRegisterRequestDto.build();
    }

    @Override
    public AuthResponseDto entityToResponseDto(Auth auth) {
        if ( auth == null ) {
            return null;
        }

        AuthResponseDto.AuthResponseDtoBuilder authResponseDto = AuthResponseDto.builder();

        authResponseDto.id( auth.getId() );
        authResponseDto.name( auth.getName() );
        authResponseDto.surname( auth.getSurname() );
        authResponseDto.phone( auth.getPhone() );
        authResponseDto.email( auth.getEmail() );
        authResponseDto.status( auth.getStatus() );

        return authResponseDto.build();
    }

    @Override
    public List<AuthResponseDto> entityListToDtoList(List<Auth> authList) {
        if ( authList == null ) {
            return null;
        }

        List<AuthResponseDto> list = new ArrayList<AuthResponseDto>( authList.size() );
        for ( Auth auth : authList ) {
            list.add( entityToResponseDto( auth ) );
        }

        return list;
    }
}
