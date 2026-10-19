###### Class io.didomi.drawable.r9 (io.didomi.sdk.r9)
.class public final synthetic Lio/didomi/sdk/r9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/B6;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/B6;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/r9;->a:Lio/didomi/sdk/B6;

    iput p2, p0, Lio/didomi/sdk/r9;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/r9;->a:Lio/didomi/sdk/B6;

    iget v1, p0, Lio/didomi/sdk/r9;->b:I

    invoke-static {v0, v1}, Lio/didomi/sdk/B6$e;->c(Lio/didomi/sdk/B6;I)V

    return-void
.end method
