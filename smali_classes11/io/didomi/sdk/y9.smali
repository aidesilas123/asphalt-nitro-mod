###### Class io.didomi.drawable.y9 (io.didomi.sdk.y9)
.class public final synthetic Lio/didomi/sdk/y9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/DidomiInitializeParameters;

.field public final synthetic b:Lio/didomi/sdk/Didomi;

.field public final synthetic c:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/y9;->a:Lio/didomi/sdk/DidomiInitializeParameters;

    iput-object p2, p0, Lio/didomi/sdk/y9;->b:Lio/didomi/sdk/Didomi;

    iput-object p3, p0, Lio/didomi/sdk/y9;->c:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/y9;->a:Lio/didomi/sdk/DidomiInitializeParameters;

    iget-object v1, p0, Lio/didomi/sdk/y9;->b:Lio/didomi/sdk/Didomi;

    iget-object v2, p0, Lio/didomi/sdk/y9;->c:Landroid/app/Application;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/Didomi;->a(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V

    return-void
.end method
