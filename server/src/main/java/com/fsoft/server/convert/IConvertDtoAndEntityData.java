package com.fsoft.server.convert;

import java.util.function.Function;

public interface IConvertDtoAndEntityData<E,T> extends Function<E, T> {

    E convertToDto(T tObject);

    T convertToEntity(E tObject);

}
