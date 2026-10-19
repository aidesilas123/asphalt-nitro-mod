###### Class com.google.android.gms.drive.TransferPreferences (com.google.android.gms.drive.TransferPreferences)
.class public interface abstract Lcom/google/android/gms/drive/TransferPreferences;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/TransferPreferences$BatteryUsage;,
        Lcom/google/android/gms/drive/TransferPreferences$NetworkType;
    }
.end annotation


# static fields
.field public static final BATTERY_USAGE_CHARGING_ONLY:I = 0x101

.field public static final BATTERY_USAGE_UNKNOWN:I = 0x0

.field public static final BATTERY_USAGE_UNRESTRICTED:I = 0x100

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI_ONLY:I = 0x2


# virtual methods
.method public abstract getBatteryUsagePreference()I
.end method

.method public abstract getNetworkPreference()I
.end method

.method public abstract isRoamingAllowed()Z
.end method

###### Class com.google.android.gms.drive.TransferPreferences.BatteryUsage (com.google.android.gms.drive.TransferPreferences$BatteryUsage)
.class public interface abstract annotation Lcom/google/android/gms/drive/TransferPreferences$BatteryUsage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BatteryUsage"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.drive.TransferPreferences.NetworkType (com.google.android.gms.drive.TransferPreferences$NetworkType)
.class public interface abstract annotation Lcom/google/android/gms/drive/TransferPreferences$NetworkType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
