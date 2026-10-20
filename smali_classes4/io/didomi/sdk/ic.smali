###### Class io.didomi.drawable.ic (io.didomi.sdk.ic)
.class public final synthetic Lio/didomi/sdk/ic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Q;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ic;->a:Lio/didomi/sdk/Q;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/ic;->a:Lio/didomi/sdk/Q;

    invoke-static {v0}, Lio/didomi/sdk/Q;->m(Lio/didomi/sdk/Q;)V

    return-void
.end method
