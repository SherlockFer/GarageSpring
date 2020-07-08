package com.apress.service.mappers;

import com.apress.domain.Booking;
import com.apress.domain.Booking.BookingBuilder;
import com.apress.domain.Part;
import com.apress.dto.BookingDTO;
import com.apress.dto.BookingDTO.BookingDTOBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-07-07T15:03:37+0100",
    comments = "version: 1.4.0.Beta1, compiler: Eclipse JDT (IDE) 3.18.0.v20190522-0428, environment: Java 12.0.1 (Oracle Corporation)"
)
@Component
public class BookingMapperImpl implements BookingMapper {

    @Override
    public BookingDTO toBookingDTO(Booking booking) {
        if ( booking == null ) {
            return null;
        }

        BookingDTOBuilder bookingDTO = BookingDTO.builder();

        bookingDTO.comments( booking.getComments() );
        bookingDTO.countryCode( booking.getCountryCode() );
        bookingDTO.date( booking.getDate() );
        bookingDTO.id( booking.getId() );
        Set<Part> set = booking.getParts();
        if ( set != null ) {
            bookingDTO.parts( new HashSet<Part>( set ) );
        }
        bookingDTO.reference( booking.getReference() );
        bookingDTO.status( booking.getStatus() );
        bookingDTO.vatNumber( booking.getVatNumber() );
        bookingDTO.vehiculeBrand( booking.getVehiculeBrand() );
        bookingDTO.vehiculeEngine( booking.getVehiculeEngine() );
        bookingDTO.vehiculeModel( booking.getVehiculeModel() );
        bookingDTO.vehiculeNumberPlate( booking.getVehiculeNumberPlate() );

        return bookingDTO.build();
    }

    @Override
    public Booking toBooking(BookingDTO bookingDTO) {
        if ( bookingDTO == null ) {
            return null;
        }

        BookingBuilder booking = Booking.builder();

        booking.comments( bookingDTO.getComments() );
        booking.countryCode( bookingDTO.getCountryCode() );
        booking.date( bookingDTO.getDate() );
        booking.id( bookingDTO.getId() );
        Set<Part> set = bookingDTO.getParts();
        if ( set != null ) {
            booking.parts( new ArrayList<Part>( set ) );
        }
        booking.reference( bookingDTO.getReference() );
        booking.status( bookingDTO.getStatus() );
        booking.vatNumber( bookingDTO.getVatNumber() );
        booking.vehiculeBrand( bookingDTO.getVehiculeBrand() );
        booking.vehiculeEngine( bookingDTO.getVehiculeEngine() );
        booking.vehiculeModel( bookingDTO.getVehiculeModel() );
        booking.vehiculeNumberPlate( bookingDTO.getVehiculeNumberPlate() );

        return booking.build();
    }

    @Override
    public Collection<BookingDTO> toBookingDTOs(Collection<Booking> bookings) {
        if ( bookings == null ) {
            return null;
        }

        Collection<BookingDTO> collection = new ArrayList<BookingDTO>( bookings.size() );
        for ( Booking booking : bookings ) {
            collection.add( toBookingDTO( booking ) );
        }

        return collection;
    }
}
