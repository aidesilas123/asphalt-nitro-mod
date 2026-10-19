###### Class com.fyber.inneractive.sdk.util.o0 (com.fyber.inneractive.sdk.util.o0)
.class public Lcom/fyber/inneractive/sdk/util/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/util/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/fyber/inneractive/sdk/util/o0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/util/o0$a;

.field public b:Landroid/net/Uri;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/o0$a;Landroid/net/Uri;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/util/o0$a;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/o0;->a:Lcom/fyber/inneractive/sdk/util/o0$a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/util/o0;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/util/o0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fyber/inneractive/sdk/util/o0;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/o0;->a:Lcom/fyber/inneractive/sdk/util/o0$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/util/o0$a;->mPriority:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/util/o0;->a:Lcom/fyber/inneractive/sdk/util/o0$a;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/util/o0$a;->mPriority:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
