###### Class com.google.android.material.progressindicator.AnimatorDurationScaleProvider (com.google.android.material.progressindicator.AnimatorDurationScaleProvider)
.class public Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;
.super Ljava/lang/Object;
.source "AnimatorDurationScaleProvider.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static a:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultSystemAnimatorDurationScale(F)V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput p0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->a:F

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;)F
    .registers 6
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_f

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_f
    const/16 v3, 0x10

    if-ne v0, v3, :cond_18

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_18
    sget p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->a:F

    return p1
.end method
