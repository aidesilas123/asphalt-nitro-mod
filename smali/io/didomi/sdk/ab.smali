###### Class io.didomi.drawable.ab (io.didomi.sdk.ab)
.class public final synthetic Lio/didomi/sdk/ab;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K7;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K7;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ab;->a:Lio/didomi/sdk/K7;

    iput p2, p0, Lio/didomi/sdk/ab;->b:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/ab;->a:Lio/didomi/sdk/K7;

    iget v1, p0, Lio/didomi/sdk/ab;->b:I

    invoke-static {v0, v1, p1, p2}, Lio/didomi/sdk/K7;->i(Lio/didomi/sdk/K7;ILandroid/view/View;Z)V

    return-void
.end method
