###### Class io.didomi.drawable.pe (io.didomi.sdk.pe)
.class public final synthetic Lio/didomi/sdk/pe;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/j7;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/j7;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/pe;->a:Lio/didomi/sdk/j7;

    iput p2, p0, Lio/didomi/sdk/pe;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/pe;->a:Lio/didomi/sdk/j7;

    iget v1, p0, Lio/didomi/sdk/pe;->b:I

    invoke-static {v0, v1}, Lio/didomi/sdk/j7$f;->c(Lio/didomi/sdk/j7;I)V

    return-void
.end method
