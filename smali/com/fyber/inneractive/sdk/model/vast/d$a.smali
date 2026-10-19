###### Class com.fyber.inneractive.sdk.model.vast.d.a (com.fyber.inneractive.sdk.model.vast.d$a)
.class public Lcom/fyber/inneractive/sdk/model/vast/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/model/vast/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/model/vast/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fyber/inneractive/sdk/model/vast/d;

    check-cast p2, Lcom/fyber/inneractive/sdk/model/vast/d;

    iget p1, p1, Lcom/fyber/inneractive/sdk/model/vast/d;->c:I

    iget p2, p2, Lcom/fyber/inneractive/sdk/model/vast/d;->c:I

    sub-int/2addr p1, p2

    return p1
.end method
