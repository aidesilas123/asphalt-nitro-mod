###### Class com.google.common.hash.o (com.google.common.hash.o)
.class final Lcom/google/common/hash/o;
.super Ljava/lang/Object;
.source "Java8Compatibility.java"


# direct methods
.method static a(Ljava/nio/Buffer;)V
    .registers 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method static b(Ljava/nio/Buffer;)V
    .registers 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method static c(Ljava/nio/Buffer;I)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
