###### Class io.didomi.drawable.zf (io.didomi.sdk.zf)
.class public final synthetic Lio/didomi/sdk/zf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/y6;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/y6;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/zf;->a:Lio/didomi/sdk/y6;

    iput p2, p0, Lio/didomi/sdk/zf;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/zf;->a:Lio/didomi/sdk/y6;

    iget v1, p0, Lio/didomi/sdk/zf;->b:I

    invoke-static {v0, v1}, Lio/didomi/sdk/y6$b;->b(Lio/didomi/sdk/y6;I)V

    return-void
.end method
