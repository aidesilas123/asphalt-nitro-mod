package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.List;

/* JADX INFO: compiled from: LazyStringList.java */
/* JADX INFO: loaded from: classes5.dex */
public interface h extends m {
    ByteString getByteString(int i);

    List<?> getUnderlyingElements();

    h getUnmodifiableView();

    void p(ByteString byteString);
}
