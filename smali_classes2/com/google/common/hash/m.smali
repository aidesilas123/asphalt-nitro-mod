###### Class com.google.common.hash.m (com.google.common.hash.m)
.class public interface abstract Lcom/google/common/hash/m;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lcom/google/common/hash/v;


# virtual methods
.method public abstract a([B)Lcom/google/common/hash/m;
.end method

.method public abstract b(B)Lcom/google/common/hash/m;
.end method

.method public abstract c(Ljava/lang/CharSequence;)Lcom/google/common/hash/m;
.end method

.method public abstract d([BII)Lcom/google/common/hash/m;
.end method

.method public abstract e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/m;
.end method

.method public abstract f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/k<",
            "-TT;>;)",
            "Lcom/google/common/hash/m;"
        }
    .end annotation
.end method

.method public abstract g()Lcom/google/common/hash/HashCode;
.end method

.method public abstract putInt(I)Lcom/google/common/hash/m;
.end method

.method public abstract putLong(J)Lcom/google/common/hash/m;
.end method
