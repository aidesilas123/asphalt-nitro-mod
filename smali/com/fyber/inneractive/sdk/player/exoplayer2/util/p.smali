###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.p (com.fyber.inneractive.sdk.player.exoplayer2.util.p)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->h:Ljava/util/Comparator;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$b;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$b;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->a:I

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->d:I

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.p.a (com.fyber.inneractive.sdk.player.exoplayer2.util.p$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;",
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

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->a:I

    iget p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.p.b (com.fyber.inneractive.sdk.player.exoplayer2.util.p$b)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;",
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
    .registers 4

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    iget p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_e

    const/4 p1, -0x1

    goto :goto_15

    :cond_e
    cmpg-float p1, p2, p1

    if-gez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.p.c (com.fyber.inneractive.sdk.player.exoplayer2.util.p$c)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
