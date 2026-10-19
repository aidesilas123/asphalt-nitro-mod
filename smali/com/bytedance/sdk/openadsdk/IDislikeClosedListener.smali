###### Class com.bytedance.sdk.openadsdk.IDislikeClosedListener (com.bytedance.sdk.openadsdk.IDislikeClosedListener)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;
.super Ljava/lang/Object;
.source "IDislikeClosedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;,
        Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onItemClickClosed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.bytedance.sdk.openadsdk.IDislikeClosedListener.Default (com.bytedance.sdk.openadsdk.IDislikeClosedListener$Default)
.class public Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Default;
.super Ljava/lang/Object;
.source "IDislikeClosedListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemClickClosed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.IDislikeClosedListener.Stub (com.bytedance.sdk.openadsdk.IDislikeClosedListener$Stub)
.class public abstract Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;
.super Landroid/os/Binder;
.source "IDislikeClosedListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bytedance.sdk.openadsdk.IDislikeClosedListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.IDislikeClosedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    return-object v0

    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;)Z
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    sput-object p0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.bytedance.sdk.openadsdk.IDislikeClosedListener"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;->onItemClickClosed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

###### Class com.bytedance.sdk.openadsdk.IDislikeClosedListener.Stub.a (com.bytedance.sdk.openadsdk.IDislikeClosedListener$Stub$a)
.class Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;
.super Ljava/lang/Object;
.source "IDislikeClosedListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onItemClickClosed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IDislikeClosedListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener;->onItemClickClosed()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_35

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
