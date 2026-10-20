###### Class io.didomi.drawable.aa (io.didomi.sdk.aa)
.class public final synthetic Lio/didomi/sdk/aa;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Didomi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/aa;->a:Lio/didomi/sdk/Didomi;

    iput-object p2, p0, Lio/didomi/sdk/aa;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/aa;->a:Lio/didomi/sdk/Didomi;

    iget-object v1, p0, Lio/didomi/sdk/aa;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/didomi/sdk/Didomi;->c(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    return-void
.end method
