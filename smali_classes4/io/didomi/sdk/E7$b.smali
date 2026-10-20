###### Class io.didomi.sdk.E7.b (io.didomi.sdk.E7$b)
.class public final Lio/didomi/sdk/E7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/E7;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/E7$b",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;",
        "switch",
        "",
        "isChecked",
        "",
        "a",
        "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/E7;

.field final synthetic b:Lio/didomi/sdk/E2;


# direct methods
.method constructor <init>(Lio/didomi/sdk/E7;Lio/didomi/sdk/E2;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    iput-object p2, p0, Lio/didomi/sdk/E7$b;->b:Lio/didomi/sdk/E2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V
    .registers 4

    const-string v0, "switch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    invoke-virtual {p1}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/t8;->c(Z)V

    iget-object p1, p0, Lio/didomi/sdk/E7$b;->b:Lio/didomi/sdk/E2;

    iget-object p1, p1, Lio/didomi/sdk/E2;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    invoke-virtual {p2}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/t8;->N0()Ljava/lang/String;

    move-result-object p2

    goto :goto_29

    :cond_1f
    iget-object p2, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    invoke-virtual {p2}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/t8;->M0()Ljava/lang/String;

    move-result-object p2

    :goto_29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
