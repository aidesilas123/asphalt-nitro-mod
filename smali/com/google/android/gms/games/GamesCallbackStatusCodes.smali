###### Class com.google.android.gms.games.GamesCallbackStatusCodes (com.google.android.gms.games.GamesCallbackStatusCodes)
.class public final Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRealTimeMessageSentStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRoomConnectedStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnLeftRoomStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnJoinedRoomStatusCodes;,
        Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRoomCreatedStatusCodes;
    }
.end annotation


# static fields
.field public static final CLIENT_RECONNECT_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x1

.field public static final MULTIPLAYER_DISABLED:I = 0x1773

.field public static final OK:I = 0x0

.field public static final REAL_TIME_CONNECTION_FAILED:I = 0x1b58

.field public static final REAL_TIME_MESSAGE_SEND_FAILED:I = 0x1b59

.field public static final REAL_TIME_ROOM_NOT_JOINED:I = 0x1b5c


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_3e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_38

    const/16 v0, 0x1773

    if-eq p0, v0, :cond_35

    const/16 v0, 0x1b5c

    if-eq p0, v0, :cond_32

    const/16 v0, 0x1b58

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x1b59

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unknown games callback status code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string p0, "REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :cond_2f
    const-string p0, "REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :cond_32
    const-string p0, "REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :cond_35
    const-string p0, "MULTIPLAYER_DISABLED"

    return-object p0

    :cond_38
    const-string p0, "CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_3b
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :cond_3e
    const-string p0, "OK"

    return-object p0
.end method

###### Class com.google.android.gms.games.GamesCallbackStatusCodes.OnJoinedRoomStatusCodes (com.google.android.gms.games.GamesCallbackStatusCodes$OnJoinedRoomStatusCodes)
.class public interface abstract annotation Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnJoinedRoomStatusCodes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OnJoinedRoomStatusCodes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.GamesCallbackStatusCodes.OnLeftRoomStatusCodes (com.google.android.gms.games.GamesCallbackStatusCodes$OnLeftRoomStatusCodes)
.class public interface abstract annotation Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnLeftRoomStatusCodes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OnLeftRoomStatusCodes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.GamesCallbackStatusCodes.OnRealTimeMessageSentStatusCodes (com.google.android.gms.games.GamesCallbackStatusCodes$OnRealTimeMessageSentStatusCodes)
.class public interface abstract annotation Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRealTimeMessageSentStatusCodes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OnRealTimeMessageSentStatusCodes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.GamesCallbackStatusCodes.OnRoomConnectedStatusCodes (com.google.android.gms.games.GamesCallbackStatusCodes$OnRoomConnectedStatusCodes)
.class public interface abstract annotation Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRoomConnectedStatusCodes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OnRoomConnectedStatusCodes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.GamesCallbackStatusCodes.OnRoomCreatedStatusCodes (com.google.android.gms.games.GamesCallbackStatusCodes$OnRoomCreatedStatusCodes)
.class public interface abstract annotation Lcom/google/android/gms/games/GamesCallbackStatusCodes$OnRoomCreatedStatusCodes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OnRoomCreatedStatusCodes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
