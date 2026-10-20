###### Class io.didomi.drawable.kf (io.didomi.sdk.kf)
.class public final synthetic Lio/didomi/sdk/kf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/q4;

.field public final synthetic b:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

.field public final synthetic c:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/q4;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/kf;->a:Lio/didomi/sdk/q4;

    iput-object p2, p0, Lio/didomi/sdk/kf;->b:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    iput-object p3, p0, Lio/didomi/sdk/kf;->c:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/kf;->a:Lio/didomi/sdk/q4;

    iget-object v1, p0, Lio/didomi/sdk/kf;->b:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    iget-object v2, p0, Lio/didomi/sdk/kf;->c:Landroid/widget/Button;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/q4;->i(Lio/didomi/sdk/q4;Lio/didomi/sdk/purpose/common/model/PurposeCategory;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
