###### Class com.vungle.ads.internal.util.SuspendableTimer.a (com.vungle.ads.internal.util.SuspendableTimer$a)
.class final Lcom/vungle/ads/internal/util/SuspendableTimer$a;
.super Lkotlin/jvm/internal/t;
.source "SuspendableTimer.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/util/SuspendableTimer;-><init>(DZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILkotlin/jvm/internal/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/util/SuspendableTimer$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/util/SuspendableTimer$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/SuspendableTimer$a;->INSTANCE:Lcom/vungle/ads/internal/util/SuspendableTimer$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer$a;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .registers 1

    return-void
.end method
