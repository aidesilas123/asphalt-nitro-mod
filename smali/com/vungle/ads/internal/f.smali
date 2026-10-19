###### Class com.vungle.ads.internal.f (com.vungle.ads.internal.f)
.class public final synthetic Lcom/vungle/ads/internal/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lkotlin/i;


# direct methods
.method public synthetic constructor <init>(Lkotlin/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/f;->a:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/f;->a:Lkotlin/i;

    invoke-static {v0}, Lcom/vungle/ads/internal/h;->a(Lkotlin/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
