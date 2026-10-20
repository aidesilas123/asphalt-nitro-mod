###### Class com.vungle.ads.internal.platform.b (com.vungle.ads.internal.j.b)
.class public final synthetic Lcom/vungle/ads/internal/j/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/j/c;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/j/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/j/b;->a:Lcom/vungle/ads/internal/j/c;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/j/b;->a:Lcom/vungle/ads/internal/j/c;

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/j/c;->b(Lcom/vungle/ads/internal/j/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method
