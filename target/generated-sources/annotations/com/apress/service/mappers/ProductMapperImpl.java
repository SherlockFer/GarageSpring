package com.apress.service.mappers;

import com.apress.domain.Product;
import com.apress.domain.Product.ProductBuilder;
import com.apress.dto.ProductDTO;
import com.apress.dto.ProductDTO.ProductDTOBuilder;
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
public class ProductMapperImpl implements ProductMapper {

    @Override
    public ProductDTO toProductDTO(Product product) {
        if ( product == null ) {
            return null;
        }

        ProductDTOBuilder productDTO = ProductDTO.builder();

        productDTO.category( product.getCategory() );
        productDTO.id( product.getId() );
        productDTO.name( product.getName() );
        productDTO.price( product.getPrice() );
        productDTO.reference( product.getReference() );

        return productDTO.build();
    }

    @Override
    public Product toProduct(ProductDTO productDTO) {
        if ( productDTO == null ) {
            return null;
        }

        ProductBuilder product = Product.builder();

        product.category( productDTO.getCategory() );
        product.id( productDTO.getId() );
        product.name( productDTO.getName() );
        product.price( productDTO.getPrice() );
        product.reference( productDTO.getReference() );

        return product.build();
    }

    @Override
    public Collection<ProductDTO> toProductDTOs(Collection<Product> products) {
        if ( products == null ) {
            return null;
        }

        Collection<ProductDTO> collection = new ArrayList<ProductDTO>( products.size() );
        for ( Product product : products ) {
            collection.add( toProductDTO( product ) );
        }

        return collection;
    }
}
