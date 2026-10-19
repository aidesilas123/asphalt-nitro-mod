###### Class com.applovin.exoplayer2.d.h (com.applovin.exoplayer2.d.h)
.class public interface abstract Lcom/applovin/exoplayer2/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/h$a;
    }
.end annotation


# static fields
.field public static final ti:Lcom/applovin/exoplayer2/d/h;

.field public static final tj:Lcom/applovin/exoplayer2/d/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/h$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/h$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/h;->ti:Lcom/applovin/exoplayer2/d/h;

    sput-object v0, Lcom/applovin/exoplayer2/d/h;->tj:Lcom/applovin/exoplayer2/d/h;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/h$a;
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract aD()V
.end method

.method public abstract b(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/f;
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g(Lcom/applovin/exoplayer2/v;)I
.end method

.method public abstract release()V
.end method

###### Class com.applovin.exoplayer2.d.h.AnonymousClass1 (com.applovin.exoplayer2.d.h$1)
.class Lcom/applovin/exoplayer2/d/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/h$a;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/d/o0;->a(Lcom/applovin/exoplayer2/d/h;Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/h$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic aD()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/o0;->b(Lcom/applovin/exoplayer2/d/h;)V

    return-void
.end method

.method public b(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/f;
    .registers 5
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p3, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Lcom/applovin/exoplayer2/d/l;

    new-instance p2, Lcom/applovin/exoplayer2/d/f$a;

    new-instance p3, Lcom/applovin/exoplayer2/d/t;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/applovin/exoplayer2/d/t;-><init>(I)V

    const/16 v0, 0x1771

    invoke-direct {p2, p3, v0}, Lcom/applovin/exoplayer2/d/f$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/d/l;-><init>(Lcom/applovin/exoplayer2/d/f$a;)V

    return-object p1
.end method

.method public g(Lcom/applovin/exoplayer2/v;)I
    .registers 2

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public synthetic release()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/d/o0;->c(Lcom/applovin/exoplayer2/d/h;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.h.a (com.applovin.exoplayer2.d.h$a)
.class public interface abstract Lcom/applovin/exoplayer2/d/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final tk:Lcom/applovin/exoplayer2/d/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/d/j0;->a:Lcom/applovin/exoplayer2/d/j0;

    sput-object v0, Lcom/applovin/exoplayer2/d/h$a;->tk:Lcom/applovin/exoplayer2/d/h$a;

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

###### Class com.applovin.exoplayer2.d.j0 (com.applovin.exoplayer2.d.j0)
.class public final synthetic Lcom/applovin/exoplayer2/d/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/d/h$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/d/j0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/j0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/j0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/j0;->a:Lcom/applovin/exoplayer2/d/j0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/d/p0;->b()V

    return-void
.end method
