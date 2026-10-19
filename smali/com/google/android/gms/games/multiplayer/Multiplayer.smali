###### Class com.google.android.gms.games.multiplayer.Multiplayer (com.google.android.gms.games.multiplayer.Multiplayer)
.class public interface abstract Lcom/google/android/gms/games/multiplayer/Multiplayer;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/Multiplayer$InvitationSortOrder;
    }
.end annotation


# static fields
.field public static final EXTRA_EXCLUSIVE_BIT_MASK:Ljava/lang/String; = "exclusive_bit_mask"

.field public static final EXTRA_INVITATION:Ljava/lang/String; = "invitation"

.field public static final EXTRA_MAX_AUTOMATCH_PLAYERS:Ljava/lang/String; = "max_automatch_players"

.field public static final EXTRA_MIN_AUTOMATCH_PLAYERS:Ljava/lang/String; = "min_automatch_players"

.field public static final EXTRA_ROOM:Ljava/lang/String; = "room"

.field public static final EXTRA_TURN_BASED_MATCH:Ljava/lang/String; = "turn_based_match"

.field public static final MAX_RELIABLE_MESSAGE_LEN:I = 0x578

.field public static final MAX_UNRELIABLE_MESSAGE_LEN:I = 0x490

.field public static final SORT_ORDER_MOST_RECENT_FIRST:I = 0x0

.field public static final SORT_ORDER_SOCIAL_AGGREGATION:I = 0x1

###### Class com.google.android.gms.games.multiplayer.Multiplayer.InvitationSortOrder (com.google.android.gms.games.multiplayer.Multiplayer$InvitationSortOrder)
.class public interface abstract annotation Lcom/google/android/gms/games/multiplayer/Multiplayer$InvitationSortOrder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/Multiplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InvitationSortOrder"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
