<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Client (dashboard)" Type="Folder">
			<Item Name="Smart Dashboard" Type="Folder">
				<Item Name="Bind Controls to SmartDashboard.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Bind Controls to SmartDashboard.vi"/>
				<Item Name="Get Tab Control Refs.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Get Tab Control Refs.vi"/>
			</Item>
			<Item Name="NT Client.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Client.vi"/>
		</Item>
		<Item Name="Server (robot)" Type="Folder">
			<Item Name="NT Server.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Server.vi"/>
		</Item>
		<Item Name="Reads" Type="Folder">
			<Item Name="Network Table" Type="Folder">
				<Item Name="Read and Format" Type="Folder">
					<Item Name="NT Read and Format as String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read and Format as String.vi"/>
					<Item Name="NT Read and Format Multiple Entries as String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read and Format Multiple Entries as String.vi"/>
					<Item Name="NT Read and Format Entries as Tree.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read and Format Entries as Tree.vi"/>
					<Item Name="NT Read Multiple Entries as Generic.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Multiple Entries as Generic.vi"/>
					<Item Name="NT Read Generic Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Generic Value.vi"/>
				</Item>
				<Item Name="NT Read Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Boolean.vi"/>
				<Item Name="NT Read Number.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Number.vi"/>
				<Item Name="NT Read String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read String.vi"/>
				<Item Name="NT Read Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Boolean Array.vi"/>
				<Item Name="NT Read Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Numeric Array.vi"/>
				<Item Name="NT Read String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read String Array.vi"/>
				<Item Name="NT Read Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Value.vi"/>
			</Item>
			<Item Name="SD Read Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read Boolean.vi"/>
			<Item Name="SD Read Number.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read Number.vi"/>
			<Item Name="SD Read String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read String.vi"/>
			<Item Name="SD Read Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read Boolean Array.vi"/>
			<Item Name="SD Read Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read Numeric Array.vi"/>
			<Item Name="SD Read String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read String Array.vi"/>
			<Item Name="SD Read Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read Value.vi"/>
		</Item>
		<Item Name="Writes" Type="Folder">
			<Item Name="Network Table" Type="Folder">
				<Item Name="Write Low Level" Type="Folder">
					<Item Name="NT Write Generic Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Generic Value.vi"/>
				</Item>
				<Item Name="NT Write Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Boolean.vi"/>
				<Item Name="NT Write Number.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Number.vi"/>
				<Item Name="NT Write String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write String.vi"/>
				<Item Name="NT Write Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Boolean Array.vi"/>
				<Item Name="NT Write Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Numeric Array.vi"/>
				<Item Name="NT Write String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write String Array.vi"/>
				<Item Name="NT Write Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Value.vi"/>
			</Item>
			<Item Name="SD Write Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write Boolean.vi"/>
			<Item Name="SD Write Number.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write Number.vi"/>
			<Item Name="SD Write String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write String.vi"/>
			<Item Name="SD Write Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write Boolean Array.vi"/>
			<Item Name="SD Write Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write Numeric Array.vi"/>
			<Item Name="SD Write String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write String Array.vi"/>
			<Item Name="SD Write Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write Value.vi"/>
		</Item>
		<Item Name="Tests" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Smart Dashboard.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Smart Dashboard.vi"/>
			<Item Name="Server Panel2.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Server Panel2.vi"/>
			<Item Name="Client Panel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Client Panel.vi"/>
			<Item Name="Local Test.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Local Test.vi"/>
			<Item Name="Time Flatten.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Time Flatten.vi"/>
			<Item Name="Time Unflatten.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Time Unflatten.vi"/>
			<Item Name="Performance test.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Performance test.vi"/>
			<Item Name="Test Generic Write.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Test Generic Write.vi"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Build Buffer" Type="Folder">
				<Item Name="Build NT Data Update for Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build NT Data Update for Cluster.vi"/>
				<Item Name="Build NT Dbl Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build NT Dbl Buffer.vi"/>
				<Item Name="Build NT Field ID Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build NT Field ID Buffer.vi"/>
				<Item Name="Build NT Ping Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build NT Ping Buffer.vi"/>
				<Item Name="Build NT String Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build NT String Buffer.vi"/>
				<Item Name="Convert NT Types.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT Types.vi"/>
				<Item Name="Convert NT Boolean to LV String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT Boolean to LV String.vi"/>
				<Item Name="Convert String to NT Boolean Array Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT Boolean Array Buffer.vi"/>
				<Item Name="Convert String to NT Numeric Array Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT Numeric Array Buffer.vi"/>
				<Item Name="Convert String to NT String Array Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT String Array Buffer.vi"/>
			</Item>
			<Item Name="Parse Buffer" Type="Folder">
				<Item Name="Parse NT Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT Boolean.vi"/>
				<Item Name="Parse NT Dbl.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT Dbl.vi"/>
				<Item Name="Parse NT String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT String.vi"/>
				<Item Name="Parse NT Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT Boolean Array.vi"/>
				<Item Name="Parse NT Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT Numeric Array.vi"/>
				<Item Name="Parse NT String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT String Array.vi"/>
				<Item Name="Parse NT Data.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse NT Data.vi"/>
			</Item>
			<Item Name="Typedefs" Type="Folder">
				<Item Name="Field Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field Data.ctl"/>
				<Item Name="Field ID.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field ID.ctl"/>
				<Item Name="Field Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field Type.ctl"/>
				<Item Name="Make Table Operation.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Make Table Operation.ctl"/>
				<Item Name="Sequence.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Sequence.ctl"/>
				<Item Name="NT Event Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Event Type.ctl"/>
				<Item Name="Protocol Operations.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Protocol Operations.ctl"/>
			</Item>
			<Item Name="Connection Loop.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Connection Loop.vi"/>
			<Item Name="Create Field.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Create Field.vi"/>
			<Item Name="Field Data Manager.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field Data Manager.vi"/>
			<Item Name="Handle Dirty Fields for a Connection.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Handle Dirty Fields for a Connection.vi"/>
			<Item Name="Manage Connection List.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Manage Connection List.vi"/>
			<Item Name="Manage Dirty Field ID List.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Manage Dirty Field ID List.vi"/>
			<Item Name="NT Format Generic  to String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Format Generic  to String.vi"/>
			<Item Name="NT Globals.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Globals.vi"/>
			<Item Name="Process one Action.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Process one Action.vi"/>
			<Item Name="Table Manager.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Table Manager.vi"/>
			<Item Name="Compare Seq Numbers.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Compare Seq Numbers.vi"/>
			<Item Name="Convert NT String Buffer to LV String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT String Buffer to LV String.vi"/>
			<Item Name="Convert NT Cluster to Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT Cluster to Variant.vi"/>
			<Item Name="Convert Variant to NT Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert Variant to NT Cluster.vi"/>
			<Item Name="Update Entry.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Update Entry.vi"/>
			<Item Name="Convert String to NT String Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT String Buffer.vi"/>
			<Item Name="Update Other Clients.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Update Other Clients.vi"/>
			<Item Name="Build Entry Assign Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build Entry Assign Buffer.vi"/>
			<Item Name="Report Read Error.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Report Read Error.vi"/>
			<Item Name="Write Value Core.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Write Value Core.vi"/>
			<Item Name="Handle Dirty Elements.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Handle Dirty Elements.vi"/>
			<Item Name="Prepare Table Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Prepare Table Name.vi"/>
			<Item Name="Prepare Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Prepare Pattern.vi"/>
			<Item Name="String Matches Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/String Matches Pattern.vi"/>
			<Item Name="Tokenize Path.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Tokenize Path.vi"/>
			<Item Name="Prepare Tree Entries.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Prepare Tree Entries.vi"/>
			<Item Name="NT Read Name Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Name Cache.vi"/>
			<Item Name="NT Write Name Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Name Cache.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Usage Statistics.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Usage Statistics.vi"/>
				<Item Name="Compute Delta.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Compute Delta.vi"/>
				<Item Name="Transmitted Bytes.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Transmitted Bytes.vi"/>
				<Item Name="Make All Variables Temporary.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Make All Variables Temporary.vi"/>
				<Item Name="SD Read Name Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Read Name Cache.vi"/>
				<Item Name="SD Write Name Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/SD Write Name Cache.vi"/>
				<Item Name="WPI_DashboardLogging Global.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Dashboard/WPI_DashboardLogging Global.vi"/>
				<Item Name="WPI_DashboardPlay Operation.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Dashboard/WPI_DashboardPlay Operation.ctl"/>
				<Item Name="WPI_DashboardSD Updates.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Dashboard/WPI_DashboardSD Updates.vi"/>
				<Item Name="LEB Encoder.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/LEB Encoder.vi"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="Handle Dirty Flags.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Handle Dirty Flags.vi"/>
				<Item Name="Persist Variables.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Persist Variables.vi"/>
				<Item Name="Handle Persistent Fields.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Handle Persistent Fields.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NT Format Generic  to Config String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Format Generic  to Config String.vi"/>
				<Item Name="base64_fast_encode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/base64_fast_encode.vi"/>
				<Item Name="Escape String2.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Escape String2.vi"/>
				<Item Name="Skip to RPC Outputs.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Skip to RPC Outputs.vi"/>
				<Item Name="Convert NT String to LV String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT String to LV String.vi"/>
				<Item Name="Consume RPC Param Data.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Consume RPC Param Data.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Cached Name Lookup.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Cached Name Lookup.vi"/>
				<Item Name="Create Actual Table Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Create Actual Table Name.vi"/>
				<Item Name="Build Servo Hello.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build Servo Hello.vi"/>
				<Item Name="Buffer Assignments.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Buffer Assignments.vi"/>
				<Item Name="Determine if Client Assigns.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Determine if Client Assigns.vi"/>
				<Item Name="base64_fast_decode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/base64_fast_decode.vi"/>
				<Item Name="NT Write Raw.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Raw.vi"/>
				<Item Name="NT Write Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Variant.vi"/>
				<Item Name="Parse Persisted Bool Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse Persisted Bool Array.vi"/>
				<Item Name="Parse Persisted Num Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Parse Persisted Num Array.vi"/>
				<Item Name="Decode String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Decode String Array.vi"/>
				<Item Name="Unescape String2.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Unescape String2.vi"/>
				<Item Name="Remove Quotes2.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Remove Quotes2.vi"/>
				<Item Name="NT Update Persistence.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Update Persistence.vi"/>
				<Item Name="TCP_NoDelay_Windows.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/Nagle/TCP_NoDelay_Windows.vi"/>
				<Item Name="TCP Get Raw Net Object.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Get Raw Net Object.vi"/>
				<Item Name="Build NT RPC Response.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build NT RPC Response.vi"/>
				<Item Name="NT Read Raw.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Raw.vi"/>
				<Item Name="LEB Decoder.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/LEB Decoder.vi"/>
			</Item>
			<Item Name="wsock32.dll" Type="Document" URL="wsock32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
