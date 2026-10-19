###### Class com.vungle.ads.b (com.vungle.ads.b)
.class public final synthetic Lcom/vungle/ads/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/b;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iput-object p2, p0, Lcom/vungle/ads/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/ads/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/vungle/ads/b;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iget-object v1, p0, Lcom/vungle/ads/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/ads/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/ads/b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/AnalyticsClient;->b(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
