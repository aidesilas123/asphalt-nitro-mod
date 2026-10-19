###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.c (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;
.super Landroid/widget/ImageView;
.source "LogoView.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;III)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p3, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/c;->a(II)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    return-void
.end method
