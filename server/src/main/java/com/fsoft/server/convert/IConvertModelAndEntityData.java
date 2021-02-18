package com.fsoft.server.convert;

import java.util.function.Function;

public interface IConvertModelAndEntityData<E,T> extends Function<E, T> {

    E convertToModel(T tObject);

    T convertToEntity(E tObject);

}
