.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x2

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x4

.field static final TRANSACTION_findFocus:I = 0x5

.field static final TRANSACTION_focusSearch:I = 0x6

.field static final TRANSACTION_getServiceInfo:I = 0xa

.field static final TRANSACTION_getWindow:I = 0x8

.field static final TRANSACTION_getWindows:I = 0x9

.field static final TRANSACTION_performAccessibilityAction:I = 0x7

.field static final TRANSACTION_performGlobalAction:I = 0xb

.field static final TRANSACTION_setOnKeyEventResult:I = 0xc

.field static final TRANSACTION_setServiceInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 250
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 60
    .local v3, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_1

    .line 66
    .end local v3    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_2
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 72
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 74
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 76
    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 78
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .local v9, "_arg5":J
    move-object/from16 v2, p0

    .line 79
    invoke-virtual/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v11

    .line 80
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v11, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 86
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":J
    .end local v11    # "_result":Z
    :sswitch_3
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 92
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 96
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 98
    .local v8, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .restart local v9    # "_arg5":J
    move-object/from16 v2, p0

    .line 99
    invoke-virtual/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 100
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v11, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 101
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 106
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":J
    .end local v11    # "_result":Z
    :sswitch_4
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 112
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 114
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 116
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 118
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .restart local v9    # "_arg5":J
    move-object/from16 v2, p0

    .line 119
    invoke-virtual/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 120
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v11, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 121
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 126
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":J
    .end local v11    # "_result":Z
    :sswitch_5
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 132
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 134
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 136
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 138
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .restart local v9    # "_arg5":J
    move-object/from16 v2, p0

    .line 139
    invoke-virtual/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 140
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v11, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 141
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 146
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":J
    .end local v11    # "_result":Z
    :sswitch_6
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 152
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 156
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 158
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .restart local v9    # "_arg5":J
    move-object/from16 v2, p0

    .line 159
    invoke-virtual/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 160
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v11, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 161
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 166
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":J
    .end local v11    # "_result":Z
    :sswitch_7
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 172
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 174
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 181
    .local v7, "_arg3":Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 183
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v9

    .line 185
    .local v9, "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .local v20, "_arg6":J
    move-object/from16 v12, p0

    move v13, v3

    move-wide v14, v4

    move/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 186
    invoke-virtual/range {v12 .. v21}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v11

    .line 187
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v11, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 178
    .end local v7    # "_arg3":Landroid/os/Bundle;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v11    # "_result":Z
    .end local v20    # "_arg6":J
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Landroid/os/Bundle;
    goto :goto_7

    .line 188
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v11    # "_result":Z
    .restart local v20    # "_arg6":J
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 193
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/os/Bundle;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v11    # "_result":Z
    .end local v20    # "_arg6":J
    :sswitch_8
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v11

    .line 197
    .local v11, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v11, :cond_8

    .line 199
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 203
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 209
    .end local v3    # "_arg0":I
    .end local v11    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :sswitch_9
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Ljava/util/List;

    move-result-object v22

    .line 211
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :sswitch_a
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v11

    .line 219
    .local v11, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v11, :cond_9

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 231
    .end local v11    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_b
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v11

    .line 235
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v11, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 236
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 241
    .end local v3    # "_arg0":I
    .end local v11    # "_result":Z
    :sswitch_c
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v3, 0x1

    .line 245
    .local v3, "_arg0":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 246
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    .line 247
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 243
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
