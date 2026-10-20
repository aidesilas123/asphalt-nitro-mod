###### Class io.didomi.drawable.fe (io.didomi.sdk.fe)
.class public final synthetic Lio/didomi/sdk/fe;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b7$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b7$a;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/fe;->a:Lio/didomi/sdk/b7$a;

    iput p2, p0, Lio/didomi/sdk/fe;->b:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/fe;->a:Lio/didomi/sdk/b7$a;

    iget v1, p0, Lio/didomi/sdk/fe;->b:I

    invoke-static {v0, v1, p1, p2}, Lio/didomi/sdk/h7;->d(Lio/didomi/sdk/b7$a;ILandroid/view/View;Z)V

    return-void
.end method
