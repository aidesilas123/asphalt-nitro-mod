###### Class com.mbridge.msdk.e.a.o (com.mbridge.msdk.e.a.o)
.class public final Lcom/mbridge/msdk/e/a/o;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/e/a/o$a;,
        Lcom/mbridge/msdk/e/a/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/mbridge/msdk/e/a/a$a;

.field public final c:Lcom/mbridge/msdk/e/a/u;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/e/a/u;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/a/o;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/o;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/o;->b:Lcom/mbridge/msdk/e/a/a$a;

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/o;->c:Lcom/mbridge/msdk/e/a/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/mbridge/msdk/e/a/a$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/mbridge/msdk/e/a/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/e/a/o;->d:Z

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/o;->b:Lcom/mbridge/msdk/e/a/a$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/o;->c:Lcom/mbridge/msdk/e/a/u;

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/e/a/u;)Lcom/mbridge/msdk/e/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mbridge/msdk/e/a/u;",
            ")",
            "Lcom/mbridge/msdk/e/a/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/e/a/o;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/e/a/o;-><init>(Lcom/mbridge/msdk/e/a/u;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/mbridge/msdk/e/a/a$a;",
            ")",
            "Lcom/mbridge/msdk/e/a/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/e/a/o;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/e/a/o;-><init>(Ljava/lang/Object;Lcom/mbridge/msdk/e/a/a$a;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/o;->c:Lcom/mbridge/msdk/e/a/u;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
