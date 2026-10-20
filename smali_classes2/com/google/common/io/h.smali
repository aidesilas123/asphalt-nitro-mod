###### Class com.google.common.io.h (com.google.common.io.h)
.class final Lcom/google/common/io/h;
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
