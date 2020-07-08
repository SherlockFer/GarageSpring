package com.apress.service.mappers;

import com.apress.domain.Part;
import com.apress.domain.Part.PartBuilder;
import com.apress.dto.PartDTO;
import com.apress.dto.PartDTO.PartDTOBuilder;
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
public class PartMapperImpl implements PartMapper {

    @Override
    public PartDTO toPartDTO(Part part) {
        if ( part == null ) {
            return null;
        }

        PartDTOBuilder partDTO = PartDTO.builder();

        partDTO.id( part.getId() );
        partDTO.name( part.getName() );
        partDTO.price( part.getPrice() );
        partDTO.sku( part.getSku() );

        return partDTO.build();
    }

    @Override
    public Part toPart(PartDTO partDTO) {
        if ( partDTO == null ) {
            return null;
        }

        PartBuilder part = Part.builder();

        part.id( partDTO.getId() );
        part.name( partDTO.getName() );
        part.price( partDTO.getPrice() );
        part.sku( partDTO.getSku() );

        return part.build();
    }

    @Override
    public Collection<PartDTO> toPartDTOs(Collection<Part> parts) {
        if ( parts == null ) {
            return null;
        }

        Collection<PartDTO> collection = new ArrayList<PartDTO>( parts.size() );
        for ( Part part : parts ) {
            collection.add( toPartDTO( part ) );
        }

        return collection;
    }
}
