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

###### Class com.google.common.escape.a (com.google.common.escape.a)
.class public final synthetic Lcom/google/common/escape/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lcom/google/common/escape/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/escape/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/escape/a;->a:Lcom/google/common/escape/d;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/escape/a;->a:Lcom/google/common/escape/d;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/common/escape/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
