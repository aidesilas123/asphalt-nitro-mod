###### Class io.didomi.drawable.xe (io.didomi.sdk.xe)
.class public final synthetic Lio/didomi/sdk/xe;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/l8;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/l8;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/xe;->a:Lio/didomi/sdk/l8;

    iput p2, p0, Lio/didomi/sdk/xe;->b:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/xe;->a:Lio/didomi/sdk/l8;

    iget v1, p0, Lio/didomi/sdk/xe;->b:I

    invoke-static {v0, v1, p1, p2}, Lio/didomi/sdk/l8;->c(Lio/didomi/sdk/l8;ILandroid/view/View;Z)V

    return-void
.end method
