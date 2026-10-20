###### Class com.kidoz.sdk.api.ui_views.new_panel_view.ParentalLockView (com.kidoz.sdk.api.ui_views.new_panel_view.ParentalLockView)
.class public Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;
.super Landroid/widget/LinearLayout;
.source "ParentalLockView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/new_panel_view/ParentalLockView;->layout()V

    return-void
.end method

.method private layout()V
    .registers 2

    const v0, -0xffff01

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
