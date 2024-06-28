package org.example.mapper;

import javax.annotation.processing.Generated;
import org.example.dto.request.AddressSaveRequestDto;
import org.example.entity.Address;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-06-14T16:21:23+0300",
    comments = "version: 1.5.5.Final, compiler: IncrementalProcessingEnvironment from gradle-language-java-8.8.jar, environment: Java 21 (Oracle Corporation)"
)
@Component
public class AddressMapperImpl implements AddressMapper {

    @Override
    public Address toEntity(AddressSaveRequestDto dto) {
        if ( dto == null ) {
            return null;
        }

        Address.AddressBuilder address = Address.builder();

        address.addressLine( dto.getAddressLine() );
        address.city( dto.getCity() );
        address.state( dto.getState() );
        address.addressType( dto.getAddressType() );

        return address.build();
    }
}
