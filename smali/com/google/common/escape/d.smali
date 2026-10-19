###### Class com.google.common.escape.d (com.google.common.escape.d)
.class public abstract Lcom/google/common/escape/d;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final a:Lcom/google/common/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/f<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/escape/a;

    invoke-direct {v0, p0}, Lcom/google/common/escape/a;-><init>(Lcom/google/common/escape/d;)V

    iput-object v0, p0, Lcom/google/common/escape/d;->a:Lcom/google/common/base/f;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
