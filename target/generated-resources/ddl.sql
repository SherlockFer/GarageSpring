create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_6m2dx8obsrltpq56cduj1p9xv unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_6m2dx8obsrltpq56cduj1p9xv unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_6m2dx8obsrltpq56cduj1p9xv unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table parts_parts (
       part_id int8 not null,
        parts_id int8 not null,
        primary key (part_id, parts_id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        email varchar(255),
        full_name varchar(255),
        mobile varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings

    alter table if exists parts_parts 
       add constraint FKejt44fe2momgo8ratxffosftf 
       foreign key (parts_id) 
       references parts

    alter table if exists parts_parts 
       add constraint FKgxwcwvgd8ki46up7yis9fft0x 
       foreign key (part_id) 
       references parts
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        email varchar(255),
        full_name varchar(255),
        mobile varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        email varchar(255),
        full_name varchar(255),
        mobile varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        email varchar(255),
        full_name varchar(255),
        mobile varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        name varchar(255),
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        email varchar(255),
        full_name varchar(255),
        mobile varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        email varchar(255),
        full_name varchar(255),
        mobile varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255) not null,
        price int4,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_o61fmio5yukmmiqgnxf8pnavn unique (name)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        reference varchar(255) not null,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_klkck760tghhxldwjx22usej5 unique (reference)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        reference varchar(255) not null,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_klkck760tghhxldwjx22usej5 unique (reference)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
create sequence hibernate_sequence start 1 increment 1

    create table booking_products (
       booking_id int8 not null,
        product_id int8 not null,
        primary key (booking_id, product_id)
    )

    create table bookings (
       id int8 not null,
        comments varchar(255),
        created_at timestamp,
        date date,
        modified_at timestamp,
        reference varchar(255) not null,
        status varchar(255),
        vehicule_brand varchar(255),
        vehicule_engine varchar(255),
        vehicule_model varchar(255),
        vehicule_number_plate varchar(255),
        product_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table bookings_parts (
       booking_id int8 not null,
        parts_id int8 not null,
        primary key (booking_id, parts_id)
    )

    create table parts (
       id int8 not null,
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        sku varchar(255) not null,
        primary key (id)
    )

    create table products (
       id int8 not null,
        category varchar(255),
        created_at timestamp,
        modified_at timestamp,
        name varchar(255),
        price int4,
        reference varchar(255) not null,
        primary key (id)
    )

    create table users (
       id int8 not null,
        created_at timestamp,
        email varchar(255) not null,
        full_name varchar(255),
        mobile varchar(255),
        modified_at timestamp,
        password varchar(255),
        role varchar(255),
        primary key (id)
    )

    alter table if exists bookings 
       add constraint UK_pki3ddx1043pwavq8ijbqcxkw unique (reference)

    alter table if exists parts 
       add constraint UK_4til4yvsido1bqt0vt7rxgwl0 unique (sku)

    alter table if exists products 
       add constraint UK_klkck760tghhxldwjx22usej5 unique (reference)

    alter table if exists users 
       add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table if exists booking_products 
       add constraint FK61i0xq10qbqmdoopgop57xyd9 
       foreign key (product_id) 
       references products

    alter table if exists booking_products 
       add constraint FKihcgeg3ds5wtdcgu3eqq446qo 
       foreign key (booking_id) 
       references bookings

    alter table if exists bookings 
       add constraint FKlmdmerb98p3rhxcmvc9iunj2d 
       foreign key (product_id) 
       references products

    alter table if exists bookings 
       add constraint FKib6gjgj2e9binkktxmm175bmm 
       foreign key (customer_id) 
       references users

    alter table if exists bookings 
       add constraint FK624671ymniidpsqki9p6patf7 
       foreign key (mechanic_id) 
       references users

    alter table if exists bookings_parts 
       add constraint FK39k8n6b758fm0hx410ryeh699 
       foreign key (parts_id) 
       references parts

    alter table if exists bookings_parts 
       add constraint FKdp1b30qn0958qhs36fg1noxid 
       foreign key (booking_id) 
       references bookings
