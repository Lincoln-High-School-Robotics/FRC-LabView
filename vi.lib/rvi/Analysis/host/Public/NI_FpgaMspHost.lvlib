<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="17008000">
	<Property Name="NI.Lib.Icon" Type="Bin">&amp;Q#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;8"&lt;2MR%!813:!!O;K$1#V-#WJ",5Q,OPKI&amp;K9&amp;N;!7JA7VI";=JQVBZ"4F%#-ZG/O26X_ZZ$/87%&gt;M\6P%FXB^VL\_NHV=@X&lt;^39O0^N(_&lt;8NZOEH@@=^_CM?,3)VK63LD-&gt;8LS%=_]J'0@/1N&lt;XH,7^\SFJ?]Z#5P?=F,HP+5JTTF+5`Z&gt;MB$(P+1)YX*RU2DU$(![)Q3YW.YBG&gt;YBM@8'*\B':\B'2Z&gt;9HC':XC':XD=&amp;M-T0--T0-.DK%USWS(H'2\$2`-U4`-U4`/9-JKH!&gt;JE&lt;?!W#%;UC_WE?:KH?:R']T20]T20]\A=T&gt;-]T&gt;-]T?/7&lt;66[UTQ//9^BIHC+JXC+JXA-(=640-640-6DOCC?YCG)-G%:(#(+4;6$_6)]R?.8&amp;%`R&amp;%`R&amp;)^,WR/K&lt;75?GM=BZUG?Z%G?Z%E?1U4S*%`S*%`S'$;3*XG3*XG3RV320-G40!G3*D6^J-(3D;F4#J,(T\:&lt;=HN+P5FS/S,7ZIWV+7.NNFC&lt;+.&lt;GC0819TX-7!]JVO,(7N29CR6L%7,^=&lt;(1M4#R*IFV][.DX(X?V&amp;6&gt;V&amp;G&gt;V&amp;%&gt;V&amp;\N(L@_Z9\X_TVONVN=L^?Y8#ZR0J`D&gt;$L&amp;]8C-Q_%1_`U_&gt;LP&gt;WWPAO_0NB@$TP@4C`%`KH@[8`A@PRPA=PYZLD8Y![_ML^!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">385908736</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="Butterworth" Type="Folder">
		<Item Name="config" Type="Folder">
			<Item Name="Butterworth Filter Order.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/config/Butterworth Filter Order.ctl"/>
			<Item Name="Butterworth Filter Type.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/config/Butterworth Filter Type.ctl"/>
			<Item Name="BwCoeffScript.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/config/BwCoeffScript.vi">
				<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
			</Item>
			<Item Name="BwScaledCoefficients.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/config/BwScaledCoefficients.vi"/>
		</Item>
		<Item Name="templates" Type="Folder">
			<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
			<Item Name="BwCoeffMultiChanTemplate.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/templates/BwCoeffMultiChanTemplate.vi"/>
			<Item Name="BwCoeffSingleChanTemplate.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/templates/BwCoeffSingleChanTemplate.vi"/>
		</Item>
		<Item Name="XNode" Type="Folder">
			<Item Name="ButterworthCoefficients.xnode" Type="XNode" URL="/&lt;vilib&gt;/rvi/Analysis/host/Butterworth/XNode/ButterworthCoefficients.xnode"/>
		</Item>
	</Item>
	<Item Name="Notch" Type="Folder">
		<Item Name="config" Type="Folder">
			<Item Name="NotchScaledCoefficients.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/config/NotchScaledCoefficients.vi"/>
			<Item Name="NotchCoeffScript.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/config/NotchCoeffScript.vi">
				<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
			</Item>
		</Item>
		<Item Name="templates" Type="Folder">
			<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
			<Item Name="NotchCoeffSingleChanTemplate.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/templates/NotchCoeffSingleChanTemplate.vi"/>
			<Item Name="NotchCoeffMultiChanTemplate.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/templates/NotchCoeffMultiChanTemplate.vi"/>
			<Item Name="NotchCoeffSingleChanQTemplate.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/templates/NotchCoeffSingleChanQTemplate.vi"/>
			<Item Name="NotchCoeffMultiChanQTemplate.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/templates/NotchCoeffMultiChanQTemplate.vi"/>
		</Item>
		<Item Name="XNode" Type="Folder">
			<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
			<Item Name="NotchCoefficients.xnode" Type="XNode" URL="/&lt;vilib&gt;/rvi/Analysis/host/Notch/XNode/NotchCoefficients.xnode"/>
		</Item>
	</Item>
	<Item Name="Public" Type="Folder">
		<Item Name="Normalize Signal Generation Parameters.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Public/Normalize Signal Generation Parameters.vi"/>
		<Item Name="Scale Period.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Public/Scale Period.vi"/>
		<Item Name="FFT to Spectrum.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Public/FFT to Spectrum.vi"/>
		<Item Name="Sample Rate To Loop Time.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Public/Sample Rate To Loop Time.vi"/>
		<Item Name="Discrete FP Transfer Function to FXP.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Public/Discrete FP Transfer Function to FXP.vi"/>
	</Item>
	<Item Name="Private" Type="Folder">
		<Item Name="Coerce Duty Cycle.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Coerce Duty Cycle.vi"/>
		<Item Name="Count Zero LSBs.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Count Zero LSBs.vi">
			<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		</Item>
		<Item Name="Limit Duty Cycle Range.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Limit Duty Cycle Range.vi">
			<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		</Item>
		<Item Name="Zero N LSBs.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Zero N LSBs.vi">
			<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		</Item>
		<Item Name="Sample Rate To Loop Time (ticks).vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Sample Rate To Loop Time (ticks).vi"/>
		<Item Name="Sample Rate To Loop Time (us).vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Sample Rate To Loop Time (us).vi"/>
		<Item Name="Sample Rate To Loop Time (ms).vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/host/Private/Sample Rate To Loop Time (ms).vi"/>
	</Item>
</Library>
