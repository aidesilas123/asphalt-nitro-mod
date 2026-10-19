###### Class androidx.core.location.u (androidx.core.location.u)
.class public final synthetic Landroidx/core/location/u;
.super Ljava/lang/Object;
.source "LocationListenerCompat.java"


# direct methods
.method public static a(Landroidx/core/location/LocationListenerCompat;I)V
    .registers 2

    return-void
.end method

.method public static b(Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .registers 5
    .param p0    # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-interface {p0, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public static c(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .registers 2
    .param p0    # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public static d(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .registers 2
    .param p0    # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public static e(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p0    # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
