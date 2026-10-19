###### Class io.didomi.drawable.B7 (io.didomi.sdk.B7)
.class public final Lio/didomi/sdk/B7;
.super Lio/didomi/sdk/C7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/B7;",
        "Lio/didomi/sdk/C7;",
        "Lio/didomi/sdk/Y1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/Y1;)V",
        "Lio/didomi/sdk/A7$d;",
        "item",
        "",
        "a",
        "(Lio/didomi/sdk/A7$d;)V",
        "Lio/didomi/sdk/Y1;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/Y1;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/Y1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/C7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/B7;->a:Lio/didomi/sdk/Y1;

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/A7$d;)V
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/B7;->a:Lio/didomi/sdk/Y1;

    iget-object v1, v0, Lio/didomi/sdk/Y1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/A7$d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/Y1;->b:Landroid/widget/TextView;

    const-string v2, "textCtvVendorAdditionalInfoIabtcfTag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/A7$d;->e()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    goto :goto_21

    :cond_1f
    const/16 v2, 0x8

    :goto_21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lio/didomi/sdk/Y1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/A7$d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
