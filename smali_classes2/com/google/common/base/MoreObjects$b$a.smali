###### Class com.google.common.base.MoreObjects.b.a (com.google.common.base.MoreObjects$b$a)
.class final Lcom/google/common/base/MoreObjects$b$a;
.super Lcom/google/common/base/MoreObjects$b$b;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$b$b;-><init>(Lcom/google/common/base/MoreObjects$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/MoreObjects$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$b$a;-><init>()V

    return-void
.end method
