###### Class com.google.common.base.CharMatcher.g (com.google.common.base.CharMatcher$g)
.class abstract Lcom/google/common/base/CharMatcher$g;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/google/common/base/CharMatcher$v;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$v;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method
