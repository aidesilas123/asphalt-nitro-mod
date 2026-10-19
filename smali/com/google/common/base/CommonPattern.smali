###### Class com.google.common.base.CommonPattern (com.google.common.base.CommonPattern)
.class abstract Lcom/google/common/base/CommonPattern;
.super Ljava/lang/Object;
.source "CommonPattern.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;
    .registers 1

    invoke-static {p0}, Lcom/google/common/base/j;->a(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    move-result-object p0

    return-object p0
.end method

.method public static isPcreLike()Z
    .registers 1

    invoke-static {}, Lcom/google/common/base/j;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract d(Ljava/lang/CharSequence;)Lcom/google/common/base/c;
.end method

.method public abstract e()Ljava/lang/String;
.end method
