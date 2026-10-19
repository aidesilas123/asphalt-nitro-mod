package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.bidder.TokenParametersOuterClass$TokenParameters;
import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.a;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class y {
    public static final Charset a = Charset.forName(C.UTF8_NAME);
    public static final byte[] b;

    public interface a extends j<Boolean> {
    }

    public interface b extends j<Double> {
    }

    public interface c {
        int a();
    }

    public interface d<T extends c> {
        T a(int i);
    }

    public interface e {
        boolean a(int i);
    }

    public interface f extends j<Float> {
    }

    public interface g extends j<Integer> {
    }

    public static class h<F, T> extends AbstractList<T> {
        public final List<F> a;
        public final a<F, T> b;

        public interface a<F, T> {
        }

        public h(List<F> list, a<F, T> aVar) {
            this.a = list;
            this.b = aVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            a<F, T> aVar = this.b;
            F f2 = this.a.get(i);
            ((TokenParametersOuterClass$TokenParameters.a) aVar).getClass();
            T t = (T) TokenParametersOuterClass$TokenParameters.k.a(((Integer) f2).intValue());
            return t == null ? (T) TokenParametersOuterClass$TokenParameters.k.UNRECOGNIZED : t;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.size();
        }
    }

    public interface i extends j<Long> {
    }

    public interface j<E> extends List<E>, RandomAccess {
        j<E> b(int i);

        void b();

        boolean d();
    }

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        com.fyber.inneractive.sdk.protobuf.j.a(bArr, 0, 0, false);
    }

    public static int a(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    public static Object a(Object obj, Object obj2) {
        o0 o0Var = (o0) obj2;
        a.AbstractC0193a abstractC0193a = (a.AbstractC0193a) ((o0) obj).toBuilder();
        abstractC0193a.getClass();
        GeneratedMessageLite.b bVar = (GeneratedMessageLite.b) abstractC0193a;
        if (!bVar.a.getClass().isInstance(o0Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        bVar.c();
        bVar.a(bVar.b, (GeneratedMessageLite) ((com.fyber.inneractive.sdk.protobuf.a) o0Var));
        return bVar.b();
    }

    public static <T> T a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
